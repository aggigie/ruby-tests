require_relative('../lib/hello_world')

RSpec.describe HelloWorld do
  it 'says hi' do
    expect(HelloWorld.hello).to(eq('Hello, World!'))
  end
end