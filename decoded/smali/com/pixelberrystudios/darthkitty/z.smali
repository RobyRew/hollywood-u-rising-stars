.class Lcom/pixelberrystudios/darthkitty/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/x;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/x;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/z;->a:Lcom/pixelberrystudios/darthkitty/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 348
    const-string/jumbo v0, "showAccountNotFoundDialog onCancel"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 350
    return-void
.end method
