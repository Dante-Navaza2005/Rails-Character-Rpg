require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:dante)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "should create character" do
    visit characters_url
    click_on "New character"

    fill_in "Charisma", with: @character.charisma
    fill_in "Constitution", with: @character.constitution
    fill_in "Dexterity", with: @character.dexterity
    fill_in "Intelligence", with: @character.intelligence
    fill_in "Name", with: @character.name
    fill_in "Proficiency bonus", with: @character.proficiency_bonus
    fill_in "Strength", with: @character.strength
    fill_in "Wisdom", with: @character.wisdom
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "should update Character" do
    visit character_url(@character)
    click_on "Edit this character", match: :first

    fill_in "Charisma", with: @character.charisma
    fill_in "Constitution", with: @character.constitution
    fill_in "Dexterity", with: @character.dexterity
    fill_in "Intelligence", with: @character.intelligence
    fill_in "Name", with: @character.name
    fill_in "Proficiency bonus", with: @character.proficiency_bonus
    fill_in "Strength", with: @character.strength
    fill_in "Wisdom", with: @character.wisdom
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "should destroy Character" do
    visit character_url(@character)

    page.accept_confirm do
      click_on "Destroy this character", match: :first
    end

    assert_text "Character was successfully destroyed."
  end
end
