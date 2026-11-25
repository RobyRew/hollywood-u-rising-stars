.class Lcom/pixelberrystudios/iab/u;
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
    .line 430
    iput-object p1, p0, Lcom/pixelberrystudios/iab/u;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 432
    const-string/jumbo v0, "Query SKU inventory finished."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/pixelberrystudios/iab/u;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->b(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z

    .line 435
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to query SKU inventory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/pixelberrystudios/iab/u;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->b(Z)V

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    const-string/jumbo v0, "Query SKU inventory was successful."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/pixelberrystudios/iab/u;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iput-object p2, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    .line 447
    iget-object v0, p0, Lcom/pixelberrystudios/iab/u;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->b(Z)V

    goto :goto_0
.end method
