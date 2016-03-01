<div class="row block-center" style="clear:both">
  
  <nav >
    <ul class="pagination">
      <li>
        <a href="<?=$page?>?page=<?=$prev_page.$idPage?>" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>

      <?php for($i=1;$i<=$count_pages;$i++) { ?>
      <li><a href="<?=$page?>?page=<?=$i.$idPage?>"><?=$i?></a></li>
      <?php } ?>
      
      <li>
        <a href="<?=$page?>?page=<?=$next_page.$idPage?>" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
        </a>
      </li>
    </ul>
  </nav>
</div>