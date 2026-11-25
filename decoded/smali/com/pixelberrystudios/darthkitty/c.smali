.class final Lcom/pixelberrystudios/darthkitty/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->d:Z

    .line 275
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getInstance()Lcom/pixelberrystudios/darthkitty/DKAmazon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->scheduleAuthenticationCallback()V

    .line 276
    return-void
.end method
