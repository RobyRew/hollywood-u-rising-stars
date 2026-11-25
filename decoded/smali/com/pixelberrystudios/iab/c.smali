.class Lcom/pixelberrystudios/iab/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/Purchase;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/pixelberrystudios/iab/AmazonHelper;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/AmazonHelper;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/pixelberrystudios/iab/c;->c:Lcom/pixelberrystudios/iab/AmazonHelper;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/c;->a:Lcom/pixelberrystudios/iab/Purchase;

    iput-object p3, p0, Lcom/pixelberrystudios/iab/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/pixelberrystudios/iab/c;->c:Lcom/pixelberrystudios/iab/AmazonHelper;

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Lcom/pixelberrystudios/iab/AmazonHelper;)Lcom/pixelberrystudios/iab/aj;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x6

    const-string/jumbo v3, "Failed purchase."

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pixelberrystudios/iab/c;->a:Lcom/pixelberrystudios/iab/Purchase;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    .line 385
    return-void
.end method
