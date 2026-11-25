.class Lcom/pixelberrystudios/iab/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/af;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/pixelberrystudios/iab/j;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/am;)V
    .locals 2

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Consumption finished. Purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Lcom/pixelberrystudios/iab/am;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/pixelberrystudios/iab/j;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/pixelberrystudios/iab/j;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/Inventory;->erasePurchase(Ljava/lang/String;)V

    .line 579
    :cond_0
    const-string/jumbo v0, "Consumption SUCCESS!"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 584
    :cond_1
    const-string/jumbo v0, "End consumption flow."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 585
    return-void
.end method
