



<!-- MODULE Home categories -->
<div class="home_categories">
    {*<h2>{l s='Categories' mod='homecategories'}</h2>*}
    {if isset($categories) AND $categories}
            <ul>
            {foreach from=$categories item=category name=homeCategories}
				{if $category.id_category neq 41}
					{assign var='categoryLink' value=$link->getcategoryLink($category.id_category, $category.link_rewrite)}
					<li class="ajax_block_category col-xs-12 col-sm-3 col-md-3 first-in-line first-item-of-tablet-line first-item-of-mobile-line{if $smarty.foreach.homeCategories.first}first_item{elseif $smarty.foreach.homeCategories.last}last_item{else}item{/if}">
					<div>
                        <a href="{$categoryLink}" title="{$category.legend}" class="category_image">
                            <img src="{$img_cat_dir}{$category.id_category}.jpg" alt="{$category.name}" title="{$category.name}" class="categoryImage"  height="260" width="200" />
                        </a>
                    </div>
					<a  class = "new-box" href="{$categoryLink}" title="{$category.legend}">{$category.name|truncate:35}</a>
					</li>
				{/if}
            {/foreach}
            </ul>
    {else}
        <p>{l s='No categories' mod='homecategories'}</p>
  {/if}
    <div class="cr"></div>
</div>
<!-- /MODULE Home categories -->