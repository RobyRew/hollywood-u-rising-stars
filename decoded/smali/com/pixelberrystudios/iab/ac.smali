.class Lcom/pixelberrystudios/iab/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/pixelberrystudios/iab/af;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/pixelberrystudios/iab/ag;

.field final synthetic e:Lcom/pixelberrystudios/iab/w;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/w;Ljava/util/List;Lcom/pixelberrystudios/iab/af;Landroid/os/Handler;Lcom/pixelberrystudios/iab/ag;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/pixelberrystudios/iab/ac;->e:Lcom/pixelberrystudios/iab/w;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/ac;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/pixelberrystudios/iab/ac;->b:Lcom/pixelberrystudios/iab/af;

    iput-object p4, p0, Lcom/pixelberrystudios/iab/ac;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/pixelberrystudios/iab/ac;->d:Lcom/pixelberrystudios/iab/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 883
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 884
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/iab/Purchase;

    .line 886
    :try_start_0
    iget-object v3, p0, Lcom/pixelberrystudios/iab/ac;->e:Lcom/pixelberrystudios/iab/w;

    invoke-virtual {v3, v0}, Lcom/pixelberrystudios/iab/w;->a(Lcom/pixelberrystudios/iab/Purchase;)V

    .line 887
    new-instance v3, Lcom/pixelberrystudios/iab/am;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/pixelberrystudios/iab/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/v;->a()Lcom/pixelberrystudios/iab/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ac;->e:Lcom/pixelberrystudios/iab/w;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/w;->a()V

    .line 895
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ac;->b:Lcom/pixelberrystudios/iab/af;

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ac;->c:Landroid/os/Handler;

    new-instance v2, Lcom/pixelberrystudios/iab/ad;

    invoke-direct {v2, p0, v1}, Lcom/pixelberrystudios/iab/ad;-><init>(Lcom/pixelberrystudios/iab/ac;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ac;->d:Lcom/pixelberrystudios/iab/ag;

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ac;->c:Landroid/os/Handler;

    new-instance v2, Lcom/pixelberrystudios/iab/ae;

    invoke-direct {v2, p0, v1}, Lcom/pixelberrystudios/iab/ae;-><init>(Lcom/pixelberrystudios/iab/ac;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 909
    :cond_2
    return-void
.end method
