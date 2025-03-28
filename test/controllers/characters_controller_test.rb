require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:dante)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference("Character.count") do
      post characters_url, params: { character: { charisma: @character.charisma, constitution: @character.constitution, dexterity: @character.dexterity, intelligence: @character.intelligence, level: @character.level, name: @character.name, proficiency_bonus: @character.proficiency_bonus, strength: @character.strength, wisdom: @character.wisdom } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { charisma: @character.charisma, constitution: @character.constitution, dexterity: @character.dexterity, intelligence: @character.intelligence, level: @character.level, name: @character.name, proficiency_bonus: @character.proficiency_bonus, strength: @character.strength, wisdom: @character.wisdom } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference("Character.count", -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
