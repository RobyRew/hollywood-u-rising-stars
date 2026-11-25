.class public Lcom/amazon/ags/jni/player/ProfilesJni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native callSignedInStateChangedListener(Z)V
.end method

.method public static native getLocalPlayerProfileResponseFailure(JII)V
.end method

.method public static native getLocalPlayerProfileResponseSuccess(Lcom/amazon/ags/api/player/RequestPlayerResponse;JI)V
.end method
