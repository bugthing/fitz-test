# frozen_string_literal: true

# Handles paging
class Pager
  attr_reader :page, :page_size

  def initialize(page:, page_size: 100)
    @page = page.to_i
    @page_size = page_size.to_i
  end

  def max_number
    100_000_000_000
  end

  def max_page
    (max_number / page_size).to_i
  end

  def start_number
    (page_size * (page - 1)) + 1
  end

  def end_number
    start_number + (page_size - 1)
  end
end
