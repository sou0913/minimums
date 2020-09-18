require_relative 'models'

def main
  train_company = TrainCompany.new
  ticket = Ticket.new(train_company: train_company)
  train = Train.new
  if train.pick_up(ticket)
    puts '乗車しました'
    if train.take_down(ticket)
      puts '降車しました'
    end
  end
end

main
