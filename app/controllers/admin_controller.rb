class AdminController < ApplicationController
    before_action :authenticate_user!
  def indexadmin
    data_array_1 = [1, 4, 3, 5, 9]
    data_array_2 = [4, 2, 10, 4, 7]
    @barv = Gchart.bar(

                :size => '300x300',
                :bar_colors => ['000000', '0088FF'],
                :title => "grafica de Barra- Tickets de viaje mas comprados",
                :bg => 'EFEFEF',
                :legend => ['España ', 'USA'],
                :data => [[1, 4, 3, 5, 9], data_array_2],
                :stacked => false,
                :legend_position => 'bottom',
                :axis_with_labels => [['x'], ['y']],
                :max_value => 15,
                :min_value => 0,
                :axis_labels => [["Ene|Fbr|Mrz|ablr|E"]],
                )






  end
end
