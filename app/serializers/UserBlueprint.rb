class UserBlueprint < Blueprinter::Base
  identifier :uuid

  view :normal do
    fields :name
    exclude :uuid
  end

  view :show do
    include_view :normal
    fields :email, :phone_number
  end

  view :embedded do
    include_view :normal
    fields :email
  end
end
