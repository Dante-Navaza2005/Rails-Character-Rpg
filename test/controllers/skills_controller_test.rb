require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill = skills(:one)
    @character = characters(:dante)
  end

  test "should get new" do
    get new_character_skill_url(@character)
    assert_response :success
  end

  test "should create skill" do
    assert_difference("Skill.count") do
      post character_skills_url(@character), params: { skill: { ability: @skill.ability, name: @skill.name, proficient: @skill.proficient, score: @skill.score }, character_id: @character.id }
    end

    assert_redirected_to character_url(@character)
  end

  test "should get edit" do
    get edit_character_skill_url(@character, @skill)
    assert_response :success
  end

  test "should update skill" do
    patch character_skill_url(@character, @skill), params: { skill: { ability: @skill.ability, character_id: @skill.character_id, name: @skill.name, proficient: @skill.proficient, score: @skill.score } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy skill" do
    assert_difference("Skill.count", -1) do
      delete skill_url(@skill)
    end

    assert_redirected_to character_url(@character)
  end
end
