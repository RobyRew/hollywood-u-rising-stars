.class Lcom/pixelberrystudios/iab/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/pixelberrystudios/iab/al;

.field final synthetic e:Lcom/pixelberrystudios/iab/w;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/w;ZLjava/util/List;Landroid/os/Handler;Lcom/pixelberrystudios/iab/al;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/pixelberrystudios/iab/y;->e:Lcom/pixelberrystudios/iab/w;

    iput-boolean p2, p0, Lcom/pixelberrystudios/iab/y;->a:Z

    iput-object p3, p0, Lcom/pixelberrystudios/iab/y;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/pixelberrystudios/iab/y;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/pixelberrystudios/iab/y;->d:Lcom/pixelberrystudios/iab/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 512
    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v0, 0x0

    const-string/jumbo v2, "Inventory refresh OK"

    invoke-direct {v1, v0, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/pixelberrystudios/iab/y;->e:Lcom/pixelberrystudios/iab/w;

    iget-boolean v3, p0, Lcom/pixelberrystudios/iab/y;->a:Z

    iget-object v4, p0, Lcom/pixelberrystudios/iab/y;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/pixelberrystudios/iab/w;->a(ZLjava/util/List;)Lcom/pixelberrystudios/iab/Inventory;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pixelberrystudios/iab/v; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 524
    :goto_0
    iget-object v2, p0, Lcom/pixelberrystudios/iab/y;->e:Lcom/pixelberrystudios/iab/w;

    invoke-virtual {v2}, Lcom/pixelberrystudios/iab/w;->a()V

    .line 528
    iget-object v2, p0, Lcom/pixelberrystudios/iab/y;->c:Landroid/os/Handler;

    new-instance v3, Lcom/pixelberrystudios/iab/z;

    invoke-direct {v3, p0, v1, v0}, Lcom/pixelberrystudios/iab/z;-><init>(Lcom/pixelberrystudios/iab/y;Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void

    .line 517
    :catch_0
    move-exception v1

    .line 518
    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x6

    const-string/jumbo v3, "NPE - possible missing service"

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 520
    :catch_1
    move-exception v1

    .line 521
    invoke-virtual {v1}, Lcom/pixelberrystudios/iab/v;->a()Lcom/pixelberrystudios/iab/am;

    move-result-object v1

    goto :goto_0
.end method
