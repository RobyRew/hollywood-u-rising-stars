.class Lcom/pixelberrystudios/darthkitty/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ad;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ad;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ae;->a:Lcom/pixelberrystudios/darthkitty/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 434
    const-string/jumbo v0, "Maybe later button click"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v0, "<LOCAL>"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->saveAccountPreference(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, "authenticateFailure"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->authenticateFailure()V

    .line 441
    return-void
.end method
