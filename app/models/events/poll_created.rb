class Events::PollCreated < Event
  include Events::LiveUpdate
  include Events::Notify::FromAuthor
  include Events::Notify::Mentions
  include Events::Notify::ThirdParty

  def self.publish!(poll, actor)
    super poll,
          user: actor,
          discussion: poll.discussion,
          custom_fields: { notified: poll.notified }
  end
end
