class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents, id: :uuid  do |t|
      t.text :content
    end
  end
end
