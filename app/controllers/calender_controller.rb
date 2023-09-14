class CalenderController < ApplicationController
    before_action :authenticate_user!

    def index
        today = Time.now.to_date
        start_date = today.beginning_of_month.beginning_of_week
        end_date = today.end_of_month.end_of_week
    
        # Extend the date range to include the previous and next months.
        previous_month_start_date = start_date - 1.month
        next_month_end_date = end_date + 1.month
    
        # Query for tasks within the extended date range.
        @meetings = current_user.tasks.where(taskday: previous_month_start_date..next_month_end_date)
    
        
    end
end
