.class Lcom/pixelberrystudios/iab/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/pixelberrystudios/iab/o;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const/16 v0, 0x1506

    .line 215
    iget-object v1, p0, Lcom/pixelberrystudios/iab/o;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 217
    :cond_0
    return-void
.end method
