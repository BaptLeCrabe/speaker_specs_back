require "test_helper"

class ThieleSmallsControllerTest < ActionDispatch::IntegrationTest
  setup { @thiele_small = thiele_smalls(:one) }

  test "should get index" do
    get thiele_smalls_url, as: :json
    assert_response :success
  end

  test "should create thiele_small" do
    assert_difference("ThieleSmall.count") do
      post thiele_smalls_url,
           params: {
             thiele_small: {
               cms: @thiele_small.cms,
               driver_id: @thiele_small.driver_id,
               ebp: @thiele_small.ebp,
               efficiency: @thiele_small.efficiency,
               force_factor: @thiele_small.force_factor,
               le: @thiele_small.le,
               mmd: @thiele_small.mmd,
               mms: @thiele_small.mms,
               qes: @thiele_small.qes,
               qms: @thiele_small.qms,
               qts: @thiele_small.qts,
               re: @thiele_small.re,
               resonant_frequency: @thiele_small.resonant_frequency,
               rms: @thiele_small.rms,
               sd: @thiele_small.sd,
               vas: @thiele_small.vas,
               xlim: @thiele_small.xlim,
               xmax: @thiele_small.xmax,
               xmaxvd: @thiele_small.xmaxvd,
               zmin: @thiele_small.zmin
             }
           },
           as: :json
    end

    assert_response :created
  end

  test "should show thiele_small" do
    get thiele_small_url(@thiele_small), as: :json
    assert_response :success
  end

  test "should update thiele_small" do
    patch thiele_small_url(@thiele_small),
          params: {
            thiele_small: {
              cms: @thiele_small.cms,
              driver_id: @thiele_small.driver_id,
              ebp: @thiele_small.ebp,
              efficiency: @thiele_small.efficiency,
              force_factor: @thiele_small.force_factor,
              le: @thiele_small.le,
              mmd: @thiele_small.mmd,
              mms: @thiele_small.mms,
              qes: @thiele_small.qes,
              qms: @thiele_small.qms,
              qts: @thiele_small.qts,
              re: @thiele_small.re,
              resonant_frequency: @thiele_small.resonant_frequency,
              rms: @thiele_small.rms,
              sd: @thiele_small.sd,
              vas: @thiele_small.vas,
              xlim: @thiele_small.xlim,
              xmax: @thiele_small.xmax,
              xmaxvd: @thiele_small.xmaxvd,
              zmin: @thiele_small.zmin
            }
          },
          as: :json
    assert_response :success
  end

  test "should destroy thiele_small" do
    assert_difference("ThieleSmall.count", -1) do
      delete thiele_small_url(@thiele_small), as: :json
    end

    assert_response :no_content
  end
end
