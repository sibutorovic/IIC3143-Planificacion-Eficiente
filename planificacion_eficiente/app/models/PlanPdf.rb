require "render_anywhere"

class PlanPdf
  include RenderAnywhere

  def initialize(plan)
    @plan = plan
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/plan.pdf")
  end

  def filename
    "Plan.pdf"
  end

  private

    attr_reader :invoice

    def as_html
      render template: "plans/pdf", layout: "plan_pdf", locals: { invoice: invoice }
    end
end
