class HomePage < SitePrism::Page
	set_url '/BookMarkSys/bookMarkList.html'

  element :keyword, '#keywordInput'
	elements :results, 'ul .bookmarkTitle'
  element :addButton, '.lineDiv .addNew'
	element :title, '#myModal #title'
	element :address, '#myModal #url'
	element :addConfirm, '#addBookMark'
  element :deleteButton, 'li:nth-child(2) .deleteButton'
	element :deleteConfirm, "#delete"

	def search (content)
		keyword.set content
		sleep 5
	end

	def result
			results.length
		end

	  def add (content1,content2)
	    addButton.click
	    sleep 3
	    title.set content1
	    sleep 3
	    address.set content2
	    sleep 3
	    addConfirm.click
	    sleep 3
	  end
		def delete
		    deleteButton.click
		    sleep 3
		    deleteConfirm.click
		    sleep 3
		  end

end
