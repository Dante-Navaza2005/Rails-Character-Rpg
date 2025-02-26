require "application_system_test_case"

class SkillsTest < ApplicationSystemTestCase
  setup do
    @skill = skills(:one)
  end

  test "visiting the index" do
    visit skills_url
    assert_selector "h1", text: "Skills"
  end

  test "should create skill" do
    visit skills_url
    click_on "New skill"

    fill_in "Ability", with: @skill.ability
    fill_in "Character", with: @skill.character_id
    fill_in "Name", with: @skill.name
    check "Proficient" if @skill.proficient
    fill_in "Score", with: @skill.score
    click_on "Create Skill"

    assert_text "Skill was successfully created"
    click_on "Back"
  end

  test "should update Skill" do
    visit skill_url(@skill)
    click_on "Edit this skill", match: :first

    fill_in "Ability", with: @skill.ability
    fill_in "Character", with: @skill.character_id
    fill_in "Name", with: @skill.name
    check "Proficient" if @skill.proficient
    fill_in "Score", with: @skill.score
    click_on "Update Skill"

    assert_text "Skill was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill" do
    visit skill_url(@skill)
    click_on "Destroy this skill", match: :first

    assert_text "Skill was successfully destroyed"
  end
end
