# ruby中可以将一些配置内容提取到yml文件中

# calculator_messages.yml
  welcome: "Welcome to Calculator! Enter your name:"
  valid_name: "Make sure to end a valid name."

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')  #打开yml文件

#调用
prompt(MESSAGES['welcome'])