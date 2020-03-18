class Udemy
  def initialize
    @udemy = Faraday.new(url: 'https://www.udemy.com/api-2.0', headers: {"Accept": "application/json, text/plain, */*","Content-Type": "application/json;charset=utf-8"})
    @udemy.basic_auth(ENV['UDEMY_USER'], ENV['UDEMY_PWD'])
  end
  
  def courses_list(query)
    courses = @udemy.get('courses', {page_size: 50, search: query})
    courses = JSON.parse(courses.body)
    courses['results']
  end
end

