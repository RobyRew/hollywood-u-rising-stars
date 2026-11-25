.class Lcom/pixelberrystudios/iab/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/am;

.field final synthetic b:Lcom/pixelberrystudios/iab/Inventory;

.field final synthetic c:Lcom/pixelberrystudios/iab/y;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/y;Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/pixelberrystudios/iab/z;->c:Lcom/pixelberrystudios/iab/y;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/z;->a:Lcom/pixelberrystudios/iab/am;

    iput-object p3, p0, Lcom/pixelberrystudios/iab/z;->b:Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/pixelberrystudios/iab/z;->c:Lcom/pixelberrystudios/iab/y;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/y;->d:Lcom/pixelberrystudios/iab/al;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/z;->a:Lcom/pixelberrystudios/iab/am;

    iget-object v2, p0, Lcom/pixelberrystudios/iab/z;->b:Lcom/pixelberrystudios/iab/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/pixelberrystudios/iab/al;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V

    .line 531
    return-void
.end method
