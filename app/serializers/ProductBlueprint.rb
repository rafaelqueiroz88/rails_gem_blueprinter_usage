class ProductBlueprint < Blueprinter::Base
  identifier :uuid

  view :normal do
    fields :name
    exclude :uuid
  end

  view :show do
    fields :name
    exclude :uuid
    association :user, blueprint: UserBlueprint, view: :embedded
  end
end
