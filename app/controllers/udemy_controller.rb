class UdemyController < ApplicationController

  @@baseUrl="https://www.udemy.com/api-2.0"



  def index
    @rubyCourses = getRubyCourses
  end 

  private

  def query(path)
    headers = {
    "Accept": "application/json, text/plain, */*",
    "Authorization": "Basic ***REMOVED***",
    "Content-Type": "application/json;charset=utf-8"
    }
    
    url = @@baseUrl + path
    response = RestClient.get(url, headers=headers)
    return response
  end

  def getRubyCourses
    response = query("/courses/?page_size=20&search=ruby")
    json = JSON.parse(response.body)
    return json['results']
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
