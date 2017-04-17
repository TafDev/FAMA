class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :subject
  attribute :nickname,  :captcha  => true

  def headers
    {
      :to => "enquiries@famaphotobooths.com",
      :from => %("#{name}" <#{email}>)
    }
  end

  SUBJECTS = ["Silver", "Gold", "Platinum", "General questions", "Other"]
end