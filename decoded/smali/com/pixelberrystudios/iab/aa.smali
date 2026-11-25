.class Lcom/pixelberrystudios/iab/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/af;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/pixelberrystudios/iab/w;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/w;Lcom/pixelberrystudios/iab/af;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/pixelberrystudios/iab/aa;->c:Lcom/pixelberrystudios/iab/w;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/aa;->a:Lcom/pixelberrystudios/iab/af;

    iput-object p3, p0, Lcom/pixelberrystudios/iab/aa;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 861
    iget-object v1, p0, Lcom/pixelberrystudios/iab/aa;->a:Lcom/pixelberrystudios/iab/af;

    iget-object v0, p0, Lcom/pixelberrystudios/iab/aa;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/iab/Purchase;

    new-instance v2, Lcom/pixelberrystudios/iab/am;

    const/4 v3, 0x3

    const-string/jumbo v4, "Setup not complete"

    invoke-direct {v2, v3, v4}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/pixelberrystudios/iab/af;->a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/am;)V

    .line 863
    return-void
.end method
