feature 'View bookmarks' do 
  scenario 'view my bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "https://www.google.com/"
    expect(page).to have_content "https://www.youtube.com/"
    expect(page).to have_content "https://www.gmail.com/"
  end  
end 
