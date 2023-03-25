module Students
  class SectionsController < Students::BaseController
    before_action :set_section

    def enroll
      student_section = StudentSection.new(student: @student, section: @section)
      student_section.save!
      redirect_to students_root_url
    end

    private

    def set_section
      @section = Section.find(params[:id])
    end
  end
end