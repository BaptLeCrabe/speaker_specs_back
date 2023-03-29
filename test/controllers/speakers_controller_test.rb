require "test_helper"

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaker = speakers(:one)
  end

  test "should get index" do
    get speakers_url, as: :json
    assert_response :success
  end

  test "should create speaker" do
    assert_difference("Speaker.count") do
      post speakers_url, params: { speaker: { glb_file: @speaker.glb_file, acoustic_load_id: @speaker.acoustic_load_id, akabak_file: @speaker.akabak_file, conceptor_id: @speaker.conceptor_id, driver_sizes: @speaker.driver_sizes, f3: @speaker.f3, frequency_range: @speaker.frequency_range, hornsrep_file: @speaker.hornsrep_file, hpf: @speaker.hpf, name: @speaker.name, plan_file: @speaker.plan_file, sensitivity: @speaker.sensitivity } }, as: :json
    end

    assert_response :created
  end

  test "should show speaker" do
    get speaker_url(@speaker), as: :json
    assert_response :success
  end

  test "should update speaker" do
    patch speaker_url(@speaker), params: { speaker: { glb_file: @speaker.glb_file, acoustic_load_id: @speaker.acoustic_load_id, akabak_file: @speaker.akabak_file, conceptor_id: @speaker.conceptor_id, driver_sizes: @speaker.driver_sizes, f3: @speaker.f3, frequency_range: @speaker.frequency_range, hornsrep_file: @speaker.hornsrep_file, hpf: @speaker.hpf, name: @speaker.name, plan_file: @speaker.plan_file, sensitivity: @speaker.sensitivity } }, as: :json
    assert_response :success
  end

  test "should destroy speaker" do
    assert_difference("Speaker.count", -1) do
      delete speaker_url(@speaker), as: :json
    end

    assert_response :no_content
  end
end
