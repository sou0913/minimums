require_relative 'main'

describe 'チケットを買って、電車に乗って、降りる' do
  example '乗車、降車メッセージが返される' do
    expect { main }.to output("乗車しました\n降車しました\n").to_stdout
  end
end