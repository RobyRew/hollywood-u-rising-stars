.class Lcom/pixelberrystudios/iab/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/pixelberrystudios/iab/n;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iput-boolean p2, p0, Lcom/pixelberrystudios/iab/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pixelberrystudios/iab/n;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-boolean v1, p0, Lcom/pixelberrystudios/iab/n;->a:Z

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->d(Z)V

    .line 140
    return-void
.end method
