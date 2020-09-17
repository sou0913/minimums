require_relative 'main'

describe 'ビルに広告を貼る' do
  subject { main }
  it '成功メッセージが返ってくる' do
    expect{ subject }.to output("澤田南ビルに広告を掲示しました\n").to_stdout
  end
end