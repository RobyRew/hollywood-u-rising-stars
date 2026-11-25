.class Lcom/pixelberrystudios/iab/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/pixelberrystudios/iab/ag;

.field final synthetic c:Lcom/pixelberrystudios/iab/w;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/w;Ljava/util/List;Lcom/pixelberrystudios/iab/ag;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/pixelberrystudios/iab/ab;->c:Lcom/pixelberrystudios/iab/w;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/ab;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/pixelberrystudios/iab/ab;->b:Lcom/pixelberrystudios/iab/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 869
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 870
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/pixelberrystudios/iab/ab;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 871
    new-instance v2, Lcom/pixelberrystudios/iab/am;

    const/4 v3, 0x3

    const-string/jumbo v4, "Setup not complete"

    invoke-direct {v2, v3, v4}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ab;->b:Lcom/pixelberrystudios/iab/ag;

    iget-object v2, p0, Lcom/pixelberrystudios/iab/ab;->a:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Lcom/pixelberrystudios/iab/ag;->a(Ljava/util/List;Ljava/util/List;)V

    .line 874
    return-void
.end method
