class RemindermailJob < ApplicationJob
  queue_as :default

  def perform(task)
      UserMailer.invitee_mail(task).deliver_now
  end
end
