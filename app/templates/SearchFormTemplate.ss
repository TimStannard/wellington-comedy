<form $FormAttributes>
    <fieldset>
        $Fields
    </fieldset>
    <div class="actions">
        <% loop $Actions %><i class="fas fa-search search-icon"></i>$Field<% end_loop %>
    </div>
</form>