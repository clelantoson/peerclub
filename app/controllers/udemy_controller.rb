class UdemyController < ApplicationController

  @baseUrl="https://www.udemy.com/api-2.0"

  @headers = {
    "Accept": "application/json, text/plain, */*",
    "Authorization": "Basic ***REMOVED***",
    "Content-Type": "application/json;charset=utf-8"
  }
  
  def query(path)
    url = @baseUrl + path
    response = RestClient.get(url, headers=@headers)
    return response
  end

  def getRubyCourses
    response = query("/courses/?page_size=10&search=ruby")
    json = JSON.parse(response.body)
    return json['results']
  end

  def index
    @rubyCourses = getRubyCourses
  end 

  
  

  

  # def getJavaCourses
  #   response = query("/courses/?page_size=100&search=java")
  #   json = JSON.parse(response.body)

  #   return json['results']
  # end

  # rubCourses = getRubyCourses
  # puts rubCourses[0]['title']

  # javaCourses = getJavaCourses
  # puts javaCourses[0]['title']

end
