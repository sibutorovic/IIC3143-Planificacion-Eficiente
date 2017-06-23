class DownloadsController < ApplicationController

  def show
    respond_to do |format|
      format.pdf { send_plan_pdf }
    end
  end

  private

  def plan_pdf
    plan = PlanPdf.find(params[:plan_id])
    PlanPdf.new(plan)
  end

  def send_plan_pdf
    send_file plan_pdf.to_pdf,
      filename: 'plan_pdf.filename',
      type: "application/pdf",
      disposition: "inline"
  end
end
