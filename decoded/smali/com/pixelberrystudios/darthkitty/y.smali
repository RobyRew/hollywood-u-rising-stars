.class Lcom/pixelberrystudios/darthkitty/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/x;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/x;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/y;->a:Lcom/pixelberrystudios/darthkitty/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "showAccountNotFoundDialog OK button"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 343
    return-void
.end method
