import { Title } from "../../components/Title";
import { AuthWrapper } from "../../components/AuthWrapper";
import { UploadInfoContainer } from "../../components/ScreenUpload/UploadInfoContainer";
import React from "react";
import { scrollToValue } from "../../../utils/scrollToValue";


const UploadScreen = () => {
    return (
        <AuthWrapper>
            <Title>
                Bienvenido al sistema de cargue de información
            </Title>
            <UploadInfoContainer/>
        </AuthWrapper>
    );
}

export { UploadScreen };