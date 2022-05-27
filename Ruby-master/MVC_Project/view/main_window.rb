require 'fox16'
require '../controller/controller'
include Fox

class Main_window < FXMainWindow
    def initialize app
      super(app, "Главное окно", :width => 600, :height => 500)
       #packer = FXPacker.new(self, :opts => LAYOUT_FILL)
       #child1 = FXButton.new(packer, "Bottom-Right" , :opts => BUTTON_NORMAL|LAYOUT_SIDE_BOTTOM|LAYOUT_RIGHT)
      controller = Controller.new
      list_duty = self.get_list_duty controller
      menubar = FXMenuBar.new(self, LAYOUT_SIDE_TOP|LAYOUT_FILL_X)
      # Separator
      FXHorizontalSeparator.new(self, LAYOUT_SIDE_TOP|LAYOUT_FILL_X|SEPARATOR_GROOVE)
          contents = FXVerticalFrame.new(self, LAYOUT_SIDE_TOP|FRAME_NONE)
        @table = FXTable.new(self, :opts => LAYOUT_FILL )
        
        filemenu = FXMenuPane.new(self)
      FXMenuCommand.new(filemenu, "Выйти\tCtl-Q", nil, getApp(), FXApp::ID_QUIT)
      FXMenuTitle.new(menubar, "Дополнительно", nil, filemenu)
     FXMenuCommand.new(filemenu, "Удалить строку\tCtl-R").connect(SEL_COMMAND,method(:delete_duty))
     # FXMenuCommand.new(filemenu, "Добавить\t", nil,LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y, @table, FXTable::ID_DELETE_ROW)
      #child1 = FXButton.new(self, "Добавить" , :opts => BUTTON_NORMAL|LAYOUT_SIDE_BOTTOM|LAYOUT_RIGHT)
      @table.setTableSize(list_duty.size, 4)
      #puts list_duty
      #text = "&Hello, World!\nDo you see multiple lines of text?"
      #but = FXButton.new(self, text)
      j = -1
      for i in list_duty
        @table.setColumnText(0, 'Фамилия')
        @table.setColumnText(1, 'Имя')
        @table.setColumnText(2, 'Отчество')
        @table.setColumnText(3, 'Номер телефона')
        @table.setRowText(j + 1, (j + 2).to_s)
        @table.setItemText(j + 1, 0, i.name)
        @table.setItemText(j + 1, 1, i.number.to_s)
        @table.setItemText(j + 1, 2, i.days.to_s)
        @table.setItemText(j + 1, 3, i.reward_list.to_s)
        
        j += 1

      end
    end

    def create
      super
      show PLACEMENT_SCREEN
    end

    def get_list_duty controller
      controller.get_list_duty
    end

    def delete_duty(sender,sel,ptr)

    form=FXDialogBox.new(self,"Удалить запись" )
    frame=FXHorizontalFrame.new(form,LAYOUT_FILL_X|LAYOUT_FILL_Y)
    FXButton.new(frame,"Cancel",nil,form,FXDialogBox::ID_CANCEL,FRAME_RAISED|FRAME_THICK|LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)
    FXButton.new(frame,"Ok",nil,form,FXDialogBox::ID_ACCEPT,FRAME_RAISED|FRAME_THICK|LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)
  
    if form.execute !=0 then
      @table.removeRows(@table.currentRow)
    end
  end
end




if __FILE__ == $0
  FXApp.new do |app|
    Main_window.new app
    app.create
    app.run
  end
end