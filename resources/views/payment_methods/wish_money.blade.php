

<form id="payment_form" action="https://www.optimalsolutionscorp.com/payment/redirectPaymentPage.php" method="post">
    <input type="hidden" name="client_id" value="<?=$booking->user_id?>">
    <input type="hidden" name="order_id" value="<?=$booking->id?>">
    <input type="hidden" name="description_order" value="<?=$booking->e_provider->description?>">
    <input type="hidden" name="price" value="<?=$booking->getTotal()?>">
    <input type="hidden" name="currency" value="USD">
    <input type="hidden" name="id" value="14">
</form>
<script>
    document.getElementById('payment_form').submit();
</script>
