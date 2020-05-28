require 'aws-sdk-dynamodb'

def main(event:, _context:)
  tables = event.keys
  tables.each { |table| seed_table(table, event[table]) }
end

def seed_table(table, data)
  dynamodb = Aws::DynamoDB::Client.new

  data.each do |item|
    dynamodb.put_item(
      table_name: table,
      item: item
    )
  end
end
