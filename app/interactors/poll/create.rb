class Poll::Create

  def call
    context.poll = Poll.create(address_uuids: context.address_uuids,
                               text: context.text,
                               start_date: context.start_date,
                               end_date: context.end_date)


  end
end