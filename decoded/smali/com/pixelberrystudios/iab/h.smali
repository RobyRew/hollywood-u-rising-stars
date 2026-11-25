.class Lcom/pixelberrystudios/iab/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/al;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 455
    const-string/jumbo v2, "Query purchase inventory finished."

    invoke-static {v2}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-static {v2, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->c(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z

    .line 458
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to query purchase inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v1, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Z)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const-string/jumbo v2, "Query purchase inventory was successful"

    invoke-static {v2}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iput-object p2, v2, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    .line 471
    iget-object v2, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v2, v2, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    iget-object v2, v2, Lcom/pixelberrystudios/iab/Inventory;->a:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v2, v2, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    iget-object v2, v2, Lcom/pixelberrystudios/iab/Inventory;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 474
    iget-object v0, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    new-instance v2, Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {v2}, Lcom/pixelberrystudios/iab/Inventory;-><init>()V

    iput-object v2, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    .line 475
    iget-object v0, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    iget-object v2, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v2, v2, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    iget-object v2, v2, Lcom/pixelberrystudios/iab/Inventory;->a:Ljava/util/Map;

    iput-object v2, v0, Lcom/pixelberrystudios/iab/Inventory;->a:Ljava/util/Map;

    .line 477
    iget-object v0, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/pixelberrystudios/iab/Inventory;->a:Ljava/util/Map;

    .line 478
    iget-object v0, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->b(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z

    move v0, v1

    .line 482
    :cond_2
    iget-object v2, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v2, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Z)V

    .line 483
    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/pixelberrystudios/iab/h;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->b(Z)V

    goto :goto_0
.end method
