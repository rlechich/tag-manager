require 'test_helper'

class SolrMappingsControllerTest < ActionController::TestCase
  setup do
    @solr_mapping = solr_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solr_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solr_mapping" do
    assert_difference('SolrMapping.count') do
      post :create, solr_mapping: { solrfield: @solr_mapping.solrfield, solrvalue: @solr_mapping.solrvalue, tag_id: @solr_mapping.tag_id }
    end

    assert_redirected_to solr_mapping_path(assigns(:solr_mapping))
  end

  test "should show solr_mapping" do
    get :show, id: @solr_mapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solr_mapping
    assert_response :success
  end

  test "should update solr_mapping" do
    patch :update, id: @solr_mapping, solr_mapping: { solrfield: @solr_mapping.solrfield, solrvalue: @solr_mapping.solrvalue, tag_id: @solr_mapping.tag_id }
    assert_redirected_to solr_mapping_path(assigns(:solr_mapping))
  end

  test "should destroy solr_mapping" do
    assert_difference('SolrMapping.count', -1) do
      delete :destroy, id: @solr_mapping
    end

    assert_redirected_to solr_mappings_path
  end
end
