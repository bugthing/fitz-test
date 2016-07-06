# frozen_string_literal: true
require 'pager'
require 'fizz_buzz'

describe Pager do
  subject(:pager) { described_class.new(page: 1) }

  specify { expect(pager.max_number).to eq 100_000_000_000 }
  specify { expect(pager.page_size).to eq 100 }
  specify { expect(pager.page).to eq 1 }
  specify { expect(pager.max_page).to eq 1_000_000_000 }
  specify { expect(pager.start_number).to eq 1 }
  specify { expect(pager.end_number).to eq 100 }

  context 'when page 8 and 10 per page' do
    subject(:pager) { described_class.new(page: 8, page_size: 10) }
    specify { expect(pager.max_page).to eq 10_000_000_000 }
    specify { expect(pager.start_number).to eq 71 }
    specify { expect(pager.end_number).to eq 80 }
  end
end
