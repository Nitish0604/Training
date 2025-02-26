import { fireEvent, render, screen } from "@testing-library/react"
import MyRegister from "../components/MyRegister"

test('Render Register Component', () => {
    const mockSubmit = jest.fn()
    render(<MyRegister testfun = {mockSubmit}/>)
    fireEvent.click(screen.getByRole('button',{name:/Register/i}))
        expect(mockSubmit).toHaveBeenCalledWith(20)
})