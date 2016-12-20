// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.datetimepicker
//= require_tree .
$('.datetimepicker').datetimepicker();

$ ->
  $('select#info_country').change (event) ->
    select_wrapper = $('#info_state_wrapper')

    $('select', select_wrapper).attr('disabled', true)

    country = $(this).val()

    url = "/infos/subregion_options?parent_region=#{country}"
    select_wrapper.load(url)
    