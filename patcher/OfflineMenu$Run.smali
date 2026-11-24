.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Run;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Run;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Run;->a:I

    if-nez v0, :not_cash

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusCloseFinished()V

    return-void

    :not_cash
    const/4 v1, 0x1

    if-ne v0, v1, :not_diamonds

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusCloseAborted()V

    return-void

    :not_diamonds
    const/4 v1, 0x2

    if-ne v0, v1, :unlock

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusError()V

    return-void

    :unlock
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusCloseFinished()V

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusCloseAborted()V

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusError()V

    return-void
.end method
