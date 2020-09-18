class TrainCompany
  attr_accessor :ticket_id
  def initialize(ticket_id: 0)
    @ticket_id = ticket_id
  end

  def increment_ticket_id
    self.ticket_id += 1
  end
end

class Train
  attr_reader :passengers
  def initialize(passengers: [])
    @passengers = passengers
  end

  def pick_up(ticket)
    return false unless ticket.id

    passengers << ticket.id
    true
  end

  def take_down(ticket)
    return false unless ticket.id

    passengers.delete(ticket.id)
    true
  end
end

class Ticket
  attr_reader :id, :train_company, :is_enabled
  def initialize(train_company:, is_enabled: true)
    @id = train_company.ticket_id
    train_company.increment_ticket_id
    @is_enabled = is_enabled
  end
end
