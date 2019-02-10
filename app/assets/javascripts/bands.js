$(function() {

  // 以下はバンドメンバー追加用 //
  // メンバー検索の結果用HTML生成
  function memberSearchResult(users){
    var lists = "";
    users.forEach(function(user){
      lists += `<li><a class="append-member" data-user-id="${user.id}" data-user-name="${user.name}" data-user-year="${user.year}" data-user-section="${user.section}">${user.year} ${user.name}</a></li>`;
    })
    var html = `<ul>${lists}</ul>`;
    return html;
  };

  // バンドメンバー追加用のHTML生成
  function bandMemberHTML(id, year, name, section){
    var html = `<li class="band-member">
                  <input name='band[members][][user_id]' type='hidden' value='${id}'>
                  <div class="band-member_year-section">
                    ${year} ${section}
                  </div>
                  <div class="band-member_name">
                    ${name}
                  </div>
                  <div class="band-member_mic-number">
                    マイク番号
                    <select name='band[members][][mic_number]'>
                      <option value="1">1番</option>
                      <option value="2">2番</option>
                      <option value="3">3番</option>
                      <option value="4">4番</option>
                      <option value="5">5番</option>
                      <option value="6">6番</option>
                      <option value="7">7番</option>
                    </select>
                  </div>
                  <a class="band-member_remove-button">消去</a>
                </li>`
    return html;
  };

  $("#member-search-field").on("keyup", function() {
    var input = $("#member-search-field").val();
    $.ajax({
      type: 'GET',
      url: '/users/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(users) {
      $("#member-search-result").empty();
      if (users.length !== 0) {
        var dropdown = memberSearchResult(users);
        $("#member-search-result").append(dropdown);
      } else {
      }
    })
    .fail(function() {
      alert('ユーザー検索に失敗しました');
    })
  });

  // inputからfocusoutした時に検索結果消去。delayがないとバンドメンバーの追加の前にhtmlが消去されて追加されない。
  $("#member-search-field").focusout(function() {
    var delayInMilliseconds = 150;
    setTimeout(function() {
      $("#member-search-result").empty();
    }, delayInMilliseconds);
  });

  // 検索結果の名前をクリックした時にバンドメンバーに追加
  $(document).on("click", ".append-member", function () {
    $("#member-search-result").empty();
    var member = bandMemberHTML($(this).data('user-id'), $(this).data('user-year'), $(this).data('user-name'), $(this).data('user-section'));
    $(".band-member-list").append(member);
  });

  // 消去を押すと追加されたバンドメンバーから消される
  $(document).on("click", ".band-member_remove-button", function () {
    $(this).parent().remove();
  });



  // 以下はバンマス選択用
  // バンマス検索の結果用HTML生成
  function masterSearchResult(users){
    var lists = "";
    users.forEach(function(user){
      lists += `<li><a class="append-master" data-user-id="${user.id}" data-user-name="${user.name}" data-user-year="${user.year}" data-user-section="${user.section}">${user.year} ${user.name}</a></li>`;
    })
    var html = `<ul>${lists}</ul>`;
    return html;
  };

  // バンマス追加用のHTML生成
  function bandMasterHTML(id, year, name, section){
    var html = `<div class="uk-section uk-section-muted uk-preserve-color uk-section-xsmall">
                  <div class="uk-container">
                    <input name='band[master_id]' type='hidden' value='${id}'>
                    <div class="band-member_year-section">
                      ${year} ${section}
                    </div>
                    <div class="band-member_name">
                      ${name}
                    </div>
                    <a class="band-member_remove-button">消去</a>
                  </div>
                </div>`
    return html;
  };

  // バンマスをメンバーに自動追加用のHTML生成
  function masterToMemberHTML(id, year, name, section){
    var html = `<li class="band-member" id="master-member">
                  <input name='band[members][][user_id]' type='hidden' value='${id}'>
                  <div class="band-member_year-section">
                    ${year} ${section}
                  </div>
                  <div class="band-member_name">
                    ${name}
                  </div>
                  <div class="band-member_mic-number">
                    マイク番号
                    <select name='band[members][][mic_number]'>
                      <option value="1">1番</option>
                      <option value="2">2番</option>
                      <option value="3">3番</option>
                      <option value="4">4番</option>
                      <option value="5">5番</option>
                      <option value="6">6番</option>
                      <option value="7">7番</option>
                    </select>
                  </div>
                </li>`
    return html;
  };

  $("#master-search-field").on("keyup", function() {
    var input = $("#master-search-field").val();
    $.ajax({
      type: 'GET',
      url: '/users/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(users) {
      $("#master-search-result").empty();
      if (users.length !== 0) {
        var dropdown = masterSearchResult(users);
        $("#master-search-result").append(dropdown);
      } else {
      }
    })
    .fail(function() {
      alert('ユーザー検索に失敗しました');
    })
  });

  // inputからfocusoutした時に検索結果消去。delayがないとバンドメンバーの追加の前にhtmlが消去されて追加されない。
  $("#master-search-field").focusout(function() {
    var delayInMilliseconds = 150;
    setTimeout(function() {
      $("#master-search-result").empty();
    }, delayInMilliseconds);
  });

  // 検索結果の名前をクリックした時にバンマス、メンバーに追加
  $(document).on("click", ".append-master", function () {
    $("#master-search-result").empty();
    $("#master-box").empty();
    var master = bandMasterHTML($(this).data('user-id'), $(this).data('user-year'), $(this).data('user-name'), $(this).data('user-section'));
    $("#master-box").append(master);
    $(".band-member-list").append(member);
  });



  // 以下はPA選択用
  function paSearchResult(users){
    var lists = "";
    users.forEach(function(user){
      lists += `<li><a class="append-pa" data-user-id="${user.id}" data-user-name="${user.name}" data-user-year="${user.year}" data-user-section="${user.section}">${user.year} ${user.name}</a></li>`;
    })
    var html = `<ul>${lists}</ul>`;
    return html;
  };

  function bandPaHTML(id, year, name, section){
    var html = `<div class="uk-section uk-section-muted uk-preserve-color uk-section-xsmall">
                  <div class="uk-container">
                    <input name='band[pa_id]' type='hidden' value='${id}'>
                    <div class="band-member_year-section">
                      ${year} ${section}
                    </div>
                    <div class="band-member_name">
                      ${name}
                    </div>
                    <a class="band-member_remove-button">消去</a>
                  </div>
                </div>`
    return html;
  };

  $("#pa-search-field").on("keyup", function() {
    var input = $("#pa-search-field").val();
    $.ajax({
      type: 'GET',
      url: '/users/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(users) {
      $("#pa-search-result").empty();
      if (users.length !== 0) {
        var dropdown = paSearchResult(users);
        $("#pa-search-result").append(dropdown);
      } else {
      }
    })
    .fail(function() {
      alert('ユーザー検索に失敗しました');
    })
  });

  // inputからfocusoutした時に検索結果消去。delayがないとバンドメンバーの追加の前にhtmlが消去されて追加されない。
  $("#pa-search-field").focusout(function() {
    var delayInMilliseconds = 150;
    setTimeout(function() {
      $("#pa-search-result").empty();
    }, delayInMilliseconds);
  });

  // 検索結果の名前をクリックした時にバンドメンバーに追加
  $(document).on("click", ".append-pa", function () {
    $("#pa-search-result").empty();
    $("#pa-box").empty();
    var pa = bandPaHTML($(this).data('user-id'), $(this).data('user-year'), $(this).data('user-name'), $(this).data('user-section'));
    $("#pa-box").append(pa);
  });



});
