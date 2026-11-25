.class Lcom/pixelberrystudios/iab/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/pixelberrystudios/iab/ac;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/ac;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/pixelberrystudios/iab/ae;->b:Lcom/pixelberrystudios/iab/ac;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/ae;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ae;->b:Lcom/pixelberrystudios/iab/ac;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/ac;->d:Lcom/pixelberrystudios/iab/ag;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/ae;->b:Lcom/pixelberrystudios/iab/ac;

    iget-object v1, v1, Lcom/pixelberrystudios/iab/ac;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/pixelberrystudios/iab/ae;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/pixelberrystudios/iab/ag;->a(Ljava/util/List;Ljava/util/List;)V

    .line 906
    return-void
.end method
